import React, { Component } from 'react';
import './FormSignUp.css';
class FormSignUp extends Component {
    render() {
        return (
            <div>
                <div className="container-clas">
                    <div className="content">
                        <div className="row">
                            <div className="col-md-2 backFormSignIn">
                                <a href>&lt;</a>
                            </div>
                            <div className="col-md-10 contentHead">
                                <h1>Clean Form Sign Up</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <form className="modal-content animate" action="#" method="post">
                    <p className="signup">CLEAN FORM SIGN UP</p>
                    <div className="container">
                        <label htmlFor="email"><b>Email</b></label>
                        <input type="text" placeholder="Enter Email" name="mail" required />
                        <label htmlFor="sdt"><b>Phone</b></label>
                        <input type="phone" placeholder="Enter Phone" name="phone" required />
                        <label htmlFor="uname"><b>Username</b></label>
                        <input type="text" placeholder="Enter Username" name="uname" required />
                        <label htmlFor="psw"><b>Password</b></label>
                        <input type="password" placeholder="Enter Password" name="psw" required />
                        <button type="submit">SIGN UP</button>
                    </div>
                </form>
            </div>
        );
    }
}

export default FormSignUp;