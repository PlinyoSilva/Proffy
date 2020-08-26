import React from 'react';

import whatsapp from '../../assets/images/icons/whatsapp.svg'

import './styles.css';

function TeacherItem (){
    return (
        <article className="teacher-item">
                    <header>
                        <img src="https://www.estudiosite.com.br/img/post/xW5bASEHSZCbbYI5Crpa5b7dc787b309d.jpg" alt="Professor 1"/>
                        <div>
                            <strong>Professor 1</strong>
                            <span>Química</span>
                        </div>
                    </header>

                    <p>
                        Professor de Química, com mais de 10 anos de experiência,
                        á lessionou para mais de 20.000 alunos</p>
                        <br>
                        </br> 
                        <footer>
                            <p>
                                Preço/hora:
                                <strong> R$ 50,00</strong>
                            </p>
                            <button type="button">
                                <img src={whatsapp} alt="whatsapp" />
                                Entrar em contato
                            </button>
                        </footer>
                </article>
    )
}

export default TeacherItem;