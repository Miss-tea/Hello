.class public Lcom/sekai/bank/ui/profile/ProfileFragment;
.super Landroidx/fragment/app/Fragment;
.source "ProfileFragment.java"


# instance fields
.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

.field private currentUser:Lcom/sekai/bank/models/User;

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method static bridge synthetic -$$Nest$fgettokenManager(Lcom/sekai/bank/ui/profile/ProfileFragment;)Lcom/sekai/bank/utils/TokenManager;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentUser(Lcom/sekai/bank/ui/profile/ProfileFragment;Lcom/sekai/bank/models/User;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnavigateToAuth(Lcom/sekai/bank/ui/profile/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->navigateToAuth()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLoadingState(Lcom/sekai/bank/ui/profile/ProfileFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->setLoadingState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/sekai/bank/ui/profile/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUI(Lcom/sekai/bank/ui/profile/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->updateUI()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private loadUserProfile()V
    .locals 2

    const/4 v0, 0x1

    .line 77
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->setLoadingState(Z)V

    .line 79
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0}, Lcom/sekai/bank/network/ApiService;->getProfile()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$1;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private navigateToAuth()V
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sekai/bank/ui/auth/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    return-void
.end method

.method private performLogout()V
    .locals 2

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->setLoadingState(Z)V

    .line 154
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0}, Lcom/sekai/bank/network/ApiService;->logout()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$2;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setLoadingState(Z)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->changePinCard:Lcom/google/android/material/card/MaterialCardView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->logoutCard:Lcom/google/android/material/card/MaterialCardView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setupUI()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->changePinCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->logoutCard:Lcom/google/android/material/card/MaterialCardView;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsNotifications:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsSecurity:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda4;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsSupport:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda5;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsAbout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda6;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showChangePinDialog()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    sget v1, Lcom/sekai/bank/R$string;->change_pin_message:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lcom/sekai/bank/R$string;->proceed:I

    .line 129
    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->sekai_purple_primary:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->white:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->sekai_yellow_accent:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showLogoutDialog()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    sget v1, Lcom/sekai/bank/R$string;->logout_message:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    sget v1, Lcom/sekai/bank/R$string;->logout:I

    .line 142
    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$$ExternalSyntheticLambda7;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->error_red:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->white:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->white:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private updateUI()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->usernameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->userInitial:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentProfileBinding;->balanceText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v2}, Lcom/sekai/bank/models/User;->getBalance()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v0}, Lcom/sekai/bank/models/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v0}, Lcom/sekai/bank/models/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->emailText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v1}, Lcom/sekai/bank/models/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->emailText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->emailText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$setupUI$0$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->showChangePinDialog()V

    return-void
.end method

.method synthetic lambda$setupUI$1$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->showLogoutDialog()V

    return-void
.end method

.method synthetic lambda$setupUI$2$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Notifications settings"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$setupUI$3$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Security settings"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$setupUI$4$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Support & Help"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$setupUI$5$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "SekaiBank v1.0"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$showChangePinDialog$6$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 2

    .line 130
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v0, "mode"

    const-string v1, "change"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$showLogoutDialog$7$com-sekai-bank-ui-profile-ProfileFragment(Landroid/view/View;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->performLogout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 37
    invoke-static {p1, p2, p3}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentProfileBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    .line 38
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->binding:Lcom/sekai/bank/databinding/FragmentProfileBinding;

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 200
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->loadUserProfile()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 47
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 49
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->setupUI()V

    .line 50
    invoke-direct {p0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->loadUserProfile()V

    return-void
.end method
