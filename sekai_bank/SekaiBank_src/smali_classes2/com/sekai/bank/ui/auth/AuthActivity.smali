.class public Lcom/sekai/bank/ui/auth/AuthActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;,
        Lcom/sekai/bank/ui/auth/AuthActivity$SimpleTextWatcher;
    }
.end annotation


# static fields
.field private static final PIN_MODE_EXTRA:Ljava/lang/String; = "mode"

.field private static final TAG:Ljava/lang/String; = "AuthActivity"


# instance fields
.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

.field private isLoginMode:Z

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method static bridge synthetic -$$Nest$mclearErrorForInput(Lcom/sekai/bank/ui/auth/AuthActivity;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->clearErrorForInput(Landroid/text/Editable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleAuthSuccess(Lcom/sekai/bank/ui/auth/AuthActivity;Lcom/sekai/bank/models/responses/AuthResponse;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sekai/bank/ui/auth/AuthActivity;->handleAuthSuccess(Lcom/sekai/bank/models/responses/AuthResponse;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLoadingState(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->setLoadingState(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    return-void
.end method

.method private clearErrorForInput(Landroid/text/Editable;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 105
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 107
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 109
    iget-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleAuthSuccess(Lcom/sekai/bank/models/responses/AuthResponse;Z)V
    .locals 11

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getExpiresIn()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v9, v0, v2

    .line 240
    iget-object v4, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 241
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getUser()Lcom/sekai/bank/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/models/User;->getId()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/AuthResponse;->getUser()Lcom/sekai/bank/models/User;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-virtual/range {v4 .. v10}, Lcom/sekai/bank/utils/TokenManager;->saveTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V

    .line 246
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->thenRun(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private initializeServices()V
    .locals 1

    .line 54
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 55
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    return-void
.end method

.method static synthetic lambda$setupWindowInsets$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 60
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 61
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private performLogin()V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->validateLoginInputs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 171
    invoke-direct {p0, v2}, Lcom/sekai/bank/ui/auth/AuthActivity;->setLoadingState(Z)V

    .line 173
    new-instance v2, Lcom/sekai/bank/models/requests/LoginRequest;

    invoke-direct {v2, v0, v1}, Lcom/sekai/bank/models/requests/LoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0, v2}, Lcom/sekai/bank/network/ApiService;->login(Lcom/sekai/bank/models/requests/LoginRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private performRegistration()V
    .locals 5

    .line 178
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->validateRegisterInputs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v2, v2, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 184
    invoke-direct {p0, v3}, Lcom/sekai/bank/ui/auth/AuthActivity;->setLoadingState(Z)V

    .line 186
    new-instance v4, Lcom/sekai/bank/models/requests/RegisterRequest;

    invoke-direct {v4, v0, v2, v1}, Lcom/sekai/bank/models/requests/RegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0, v4}, Lcom/sekai/bank/network/ApiService;->register(Lcom/sekai/bank/models/requests/RegisterRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;

    invoke-direct {v1, p0, v3}, Lcom/sekai/bank/ui/auth/AuthActivity$AuthCallback;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;Z)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setLoadingState(Z)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->switchModeText:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    .line 269
    sget p1, Lcom/sekai/bank/R$string;->loading:I

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 270
    :cond_0
    iget-boolean p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/sekai/bank/R$string;->login_button:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/sekai/bank/R$string;->register_button:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 268
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupClickListeners()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->switchModeText:Landroid/widget/TextView;

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupTextWatchers()V
    .locals 2

    .line 88
    new-instance v0, Lcom/sekai/bank/ui/auth/AuthActivity$1;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/auth/AuthActivity$1;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V

    .line 95
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setupUI()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->updateUIForMode()V

    .line 68
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->setupClickListeners()V

    .line 69
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->setupTextWatchers()V

    return-void
.end method

.method private setupWindowInsets()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->main:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private updateUIForMode()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 118
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 119
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 120
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 123
    invoke-virtual {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 125
    invoke-virtual {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 128
    :cond_0
    iget-boolean v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->titleText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->login:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->subtitleText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->login_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    sget v2, Lcom/sekai/bank/R$string;->login_button:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->switchModeText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->switch_to_register:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->titleText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->register:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->subtitleText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->register_subtitle:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->authButton:Landroid/widget/Button;

    sget v2, Lcom/sekai/bank/R$string;->register_button:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 139
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->switchModeText:Landroid/widget/TextView;

    sget v2, Lcom/sekai/bank/R$string;->switch_to_login:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 157
    invoke-direct {p0, v1}, Lcom/sekai/bank/ui/auth/AuthActivity;->setLoadingState(Z)V

    .line 160
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/auth/AuthActivity$$ExternalSyntheticLambda4;-><init>(Lcom/sekai/bank/ui/auth/AuthActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private validateLoginInputs()Z
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->field_required:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v2

    .line 199
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->field_required:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v2

    .line 204
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->password_too_short:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private validateRegisterInputs()Z
    .locals 5

    .line 213
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->validateLoginInputs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v2, v2, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    iget-object v3, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v3, v3, Lcom/sekai/bank/databinding/ActivityAuthBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/sekai/bank/R$string;->field_required:I

    invoke-virtual {p0, v2}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 224
    :cond_1
    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->emailInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/sekai/bank/R$string;->invalid_email:I

    invoke-virtual {p0, v2}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    .line 229
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->confirmPasswordInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/sekai/bank/R$string;->passwords_dont_match:I

    invoke-virtual {p0, v2}, Lcom/sekai/bank/ui/auth/AuthActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method synthetic lambda$handleAuthSuccess$4$com-sekai-bank-ui-auth-AuthActivity(Z)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 251
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string v0, "mode"

    const-string v1, "setup"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/sekai/bank/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const v0, 0x10008000

    .line 259
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->finish()V

    return-void
.end method

.method synthetic lambda$setupClickListeners$1$com-sekai-bank-ui-auth-AuthActivity(Landroid/view/View;)V
    .locals 0

    .line 74
    iget-boolean p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->performLogin()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->performRegistration()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setupClickListeners$2$com-sekai-bank-ui-auth-AuthActivity(Landroid/view/View;)V
    .locals 0

    .line 82
    iget-boolean p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->isLoginMode:Z

    .line 83
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->updateUIForMode()V

    return-void
.end method

.method synthetic lambda$updateUIForMode$3$com-sekai-bank-ui-auth-AuthActivity()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityAuthBinding;->usernameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/ActivityAuthBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    .line 46
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/ActivityAuthBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/auth/AuthActivity;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->initializeServices()V

    .line 49
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->setupWindowInsets()V

    .line 50
    invoke-direct {p0}, Lcom/sekai/bank/ui/auth/AuthActivity;->setupUI()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 276
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/sekai/bank/ui/auth/AuthActivity;->binding:Lcom/sekai/bank/databinding/ActivityAuthBinding;

    return-void
.end method
