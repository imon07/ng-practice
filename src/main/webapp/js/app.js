(function () {
    var app = angular.module('store', []);

    app.controller('StoreController', function () {
        this.products = gems;
        this.grades = grades;
        this.blah = [];
        this.halfCredit = 0;
        this.result = {
            cgpa: 0,
            grade: '',
            showResult: false
        };

        this.calculate = function () {
            var answerValue = 0;
            console.log("blah length=" + this.blah.length);
            for (i = 0; i < this.blah.length; i++) {
                console.log("blah=" + this.blah[i]);
                answerValue = answerValue + Number(this.blah[i]);
            }
            answerValue = answerValue * 3;
            console.log("answer *3 = " + answerValue);
            answerValue = answerValue + this.halfCredit * 1.5;
            console.log("answer = " + answerValue)
            answerValue = answerValue / 22.5;
            console.log("Divide = " + answerValue)
            this.result.cgpa = answerValue;

            if (answerValue == 4) {
                this.result.grade = 'A+';
            } else if (answerValue >= 3.75) {
                this.result.grade = 'A';
            } else if (answerValue >= 3.50) {
                this.result.grade = 'A-';
            } else if (answerValue >= 3.25) {
                this.result.grade = 'B+';
            } else if (answerValue >= 3.0) {
                this.result.grade = 'B';
            } else if (answerValue >= 2.75) {
                this.result.grade = 'B-';
            } else if (answerValue >= 2.5) {
                this.result.grade = 'C+';
            } else if (answerValue >= 2.0) {
                this.result.grade = 'C';
            } else if (answerValue > 0) {
                this.result.grade = 'D';
            } else {
                this.result.grade = 'F';
            }
            this.result.showResult = true;
        }

    });

    var grades = [
        {value: '4', label: 'A+'},
        {value: '3.75', label: 'A'},
        {value: '3.5', label: 'A-'},
        {value: '3.25', label: 'B+'},
        {value: '3', label: 'B'},
        {value: '2.75', label: 'B-'},
        {value: '2.5', label: 'C+'},
        {value: '2.25', label: 'C'},
        {value: '2.0', label: 'D'},
        {value: '0', label: 'F'}
    ];

    var gems = [
        {
            name: 'Dodecahedron',
            price: 2.95,
            description: 'In Angular applications, you move the job of filling page templates with data from the' +
                ' server to the client. The result is a system better structured for dynamic page updates. Below are' +
                ' the core features you will use',
            canPurchase: true,
            soldOut: false
        },
        {
            name: 'Dodecahedron',
            price: 2.95,
            description: 'In Angular applications, you move the job of filling page templates with data from the' +
                ' server to the client. The result is a system better structured for dynamic page updates. Below are' +
                ' the core features you will use',
            canPurchase: true,
            soldOut: false
        }
    ]
})();