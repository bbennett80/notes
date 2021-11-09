
function pronouns(gender) {    
    if (gender === 'Female'){                                
      let salutation = 'Ms.';                             
      let he_she = 'She';                                 
      let his_her = 'Her';                                
      return { salutation, he_she, his_her };
     } else {                                                
       let salutation = 'Mr.';                             
       let he_she = 'He';                                  
       let his_her = 'His';                                
       return { salutation, he_she, his_her };
    }                                                       
 } 

let gender = 'Female'
let { salutation, he_she, his_her } = pronouns(gender)
console.log(` ${salutation} Test, ${he_she.toLowerCase()} likes ${his_her.toLowerCase()} breakfast.`)
