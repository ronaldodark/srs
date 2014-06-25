package br.com.igead

enum MaritalStatusEnum {
    SINGLE("Solteiro(a)"),
    MARRIED("Casado(a)"),
    DIVORCED("Divorciado(a)"),
    WIDOWER("Viúvo(a)")

    def name

    MaritalStatusEnum(name) {
        this.name = name
    }

}

