import React, { Component } from 'react';
import './FormSignIn.css';
class FormSignIn extends Component {
    render() {
        return (
            <div>
                <button onclick="document.getElementById('id01').style.display='block'" style={{ width: 'auto' }} className="btnLogin">Login</button>
                <div id="id01" className="modal">
                    <form className="modal-content animate" action="#" method="post">
                        <div className="imgcontainer">
                            <span onclick="document.getElementById('id01').style.display='none'" className="close" title="Close Modal">×</span>
                            <img src="avatar.jpg" alt="Avatar" className="avatar" style={{ width: '130px', height: '150px' }} />
                        </div>
                        <div className="container">
                            <label htmlFor="uname"><b>Username</b></label>
                            <input type="text" placeholder="Enter Username" name="uname" required />
                            <label htmlFor="pswForgot"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="pswForgot" required />
                            <button type="submit">LOGN IN</button>
                            <label>
                                <input type="checkbox" defaultChecked="checked" name="remember" /> Remember me
              </label>
                        </div>
                        <div className="container" style={{ backgroundColor: '#f1f1f1' }}>
                            <button type="button" className="cancelbtn">Cancel</button>
                            <span className="pswForgot">Forgot <a href>password?</a></span>
                        </div>
                    </form>
                </div>
            </div >
        );
    }
}

export default FormSignIn;