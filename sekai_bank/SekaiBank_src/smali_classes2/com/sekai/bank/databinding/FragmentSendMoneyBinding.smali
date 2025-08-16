.class public final Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;
.super Ljava/lang/Object;
.source "FragmentSendMoneyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final amountInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final balanceText:Landroid/widget/TextView;

.field public final datePickerButton:Landroid/widget/Button;

.field public final messageInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final messageInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final recipientProgressBar:Landroid/widget/ProgressBar;

.field public final recipientStatus:Landroid/widget/TextView;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final scheduleCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final scheduleLayout:Landroid/widget/LinearLayout;

.field public final sendButton:Landroid/widget/Button;

.field public final timePickerButton:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->balanceText:Landroid/widget/TextView;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->datePickerButton:Landroid/widget/Button;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->progressBar:Landroid/widget/ProgressBar;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientProgressBar:Landroid/widget/ProgressBar;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->scheduleCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->scheduleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->sendButton:Landroid/widget/Button;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->timePickerButton:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;
    .locals 20

    move-object/from16 v0, p0

    .line 127
    sget v1, Lcom/sekai/bank/R$id;->amount_input:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v5, :cond_0

    .line 133
    sget v1, Lcom/sekai/bank/R$id;->amount_input_layout:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v6, :cond_0

    .line 139
    sget v1, Lcom/sekai/bank/R$id;->balance_text:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 145
    sget v1, Lcom/sekai/bank/R$id;->date_picker_button:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 151
    sget v1, Lcom/sekai/bank/R$id;->message_input:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v9, :cond_0

    .line 157
    sget v1, Lcom/sekai/bank/R$id;->message_input_layout:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v10, :cond_0

    .line 163
    sget v1, Lcom/sekai/bank/R$id;->progress_bar:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ProgressBar;

    if-eqz v11, :cond_0

    .line 169
    sget v1, Lcom/sekai/bank/R$id;->recipient_input:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v12, :cond_0

    .line 175
    sget v1, Lcom/sekai/bank/R$id;->recipient_input_layout:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v13, :cond_0

    .line 181
    sget v1, Lcom/sekai/bank/R$id;->recipient_progress_bar:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ProgressBar;

    if-eqz v14, :cond_0

    .line 187
    sget v1, Lcom/sekai/bank/R$id;->recipient_status:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 193
    sget v1, Lcom/sekai/bank/R$id;->schedule_checkbox:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/material/checkbox/MaterialCheckBox;

    if-eqz v16, :cond_0

    .line 199
    sget v1, Lcom/sekai/bank/R$id;->schedule_layout:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    .line 205
    sget v1, Lcom/sekai/bank/R$id;->send_button:I

    .line 206
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    .line 211
    sget v1, Lcom/sekai/bank/R$id;->time_picker_button:I

    .line 212
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    .line 217
    new-instance v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    invoke-direct/range {v3 .. v19}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v1

    .line 222
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-static {p0, v0, v1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;
    .locals 2

    .line 114
    sget v0, Lcom/sekai/bank/R$layout;->fragment_send_money:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
