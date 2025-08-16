.class Lcom/sekai/bank/ui/send/SendMoneyFragment$2;
.super Ljava/lang/Object;
.source "SendMoneyFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/send/SendMoneyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 176
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 178
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
