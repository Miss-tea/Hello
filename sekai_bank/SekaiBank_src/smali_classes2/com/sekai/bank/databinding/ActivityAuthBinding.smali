.class public final Lcom/sekai/bank/databinding/ActivityAuthBinding;
.super Ljava/lang/Object;
.source "ActivityAuthBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final appTitle:Landroid/widget/TextView;

.field public final authButton:Landroid/widget/Button;

.field public final authCard:Lcom/google/android/material/card/MaterialCardView;

.field public final confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final emailInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final main:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final sekaiSubtitle:Landroid/widget/TextView;

.field public final subtitleText:Landroid/widget/TextView;

.field public final switchModeText:Landroid/widget/TextView;

.field public final titleText:Landroid/widget/TextView;

.field public final usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

.field public final usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 87
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    .line 88
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->appTitle:Landroid/widget/TextView;

    move-object v1, p3

    .line 89
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authCard:Lcom/google/android/material/card/MaterialCardView;

    move-object v1, p5

    .line 91
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p8

    .line 94
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->main:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->progressBar:Landroid/widget/ProgressBar;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->sekaiSubtitle:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->subtitleText:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->switchModeText:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->titleText:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 103
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    move-object/from16 v1, p18

    .line 104
    iput-object v1, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sekai/bank/databinding/ActivityAuthBinding;
    .locals 22

    move-object/from16 v0, p0

    .line 134
    sget v1, Lcom/sekai/bank/R$id;->app_title:I

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 140
    sget v1, Lcom/sekai/bank/R$id;->auth_button:I

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 146
    sget v1, Lcom/sekai/bank/R$id;->auth_card:I

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v7, :cond_0

    .line 152
    sget v1, Lcom/sekai/bank/R$id;->confirm_password_input:I

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    .line 158
    sget v1, Lcom/sekai/bank/R$id;->confirm_password_input_layout:I

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v9, :cond_0

    .line 164
    sget v1, Lcom/sekai/bank/R$id;->email_input:I

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    .line 170
    sget v1, Lcom/sekai/bank/R$id;->email_input_layout:I

    .line 171
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v11, :cond_0

    .line 176
    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 178
    sget v1, Lcom/sekai/bank/R$id;->password_input:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v13, :cond_0

    .line 184
    sget v1, Lcom/sekai/bank/R$id;->password_input_layout:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v14, :cond_0

    .line 190
    sget v1, Lcom/sekai/bank/R$id;->progress_bar:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ProgressBar;

    if-eqz v15, :cond_0

    .line 196
    sget v1, Lcom/sekai/bank/R$id;->sekai_subtitle:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 202
    sget v1, Lcom/sekai/bank/R$id;->subtitle_text:I

    .line 203
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 208
    sget v1, Lcom/sekai/bank/R$id;->switch_mode_text:I

    .line 209
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 214
    sget v1, Lcom/sekai/bank/R$id;->title_text:I

    .line 215
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 220
    sget v1, Lcom/sekai/bank/R$id;->username_input:I

    .line 221
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v20, :cond_0

    .line 226
    sget v1, Lcom/sekai/bank/R$id;->username_input_layout:I

    .line 227
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v21, :cond_0

    .line 232
    new-instance v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;

    move-object v3, v0

    move-object v4, v12

    invoke-direct/range {v3 .. v21}, Lcom/sekai/bank/databinding/ActivityAuthBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v0

    .line 237
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/ActivityAuthBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v0, v1}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/ActivityAuthBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/ActivityAuthBinding;
    .locals 2

    .line 121
    sget v0, Lcom/sekai/bank/R$layout;->activity_auth:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->bind(Landroid/view/View;)Lcom/sekai/bank/databinding/ActivityAuthBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
