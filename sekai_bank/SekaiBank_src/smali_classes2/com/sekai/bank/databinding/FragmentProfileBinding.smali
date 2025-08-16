.class public final Lcom/sekai/bank/databinding/FragmentProfileBinding;
.super Ljava/lang/Object;
.source "FragmentProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final balanceText:Landroid/widget/TextView;

.field public final changePinCard:Lcom/google/android/material/card/MaterialCardView;

.field public final emailText:Landroid/widget/TextView;

.field public final logoutCard:Lcom/google/android/material/card/MaterialCardView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/core/widget/NestedScrollView;

.field public final settingsAbout:Landroid/widget/LinearLayout;

.field public final settingsNotifications:Landroid/widget/LinearLayout;

.field public final settingsSecurity:Landroid/widget/LinearLayout;

.field public final settingsSupport:Landroid/widget/LinearLayout;

.field public final userInitial:Landroid/widget/TextView;

.field public final usernameText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    .line 65
    iput-object p2, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->balanceText:Landroid/widget/TextView;

    .line 66
    iput-object p3, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->changePinCard:Lcom/google/android/material/card/MaterialCardView;

    .line 67
    iput-object p4, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->emailText:Landroid/widget/TextView;

    .line 68
    iput-object p5, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->logoutCard:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    iput-object p6, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->progressBar:Landroid/widget/ProgressBar;

    .line 70
    iput-object p7, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsAbout:Landroid/widget/LinearLayout;

    .line 71
    iput-object p8, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsNotifications:Landroid/widget/LinearLayout;

    .line 72
    iput-object p9, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsSecurity:Landroid/widget/LinearLayout;

    .line 73
    iput-object p10, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->settingsSupport:Landroid/widget/LinearLayout;

    .line 74
    iput-object p11, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->userInitial:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->usernameText:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentProfileBinding;
    .locals 15

    .line 105
    sget v0, Lcom/sekai/bank/R$id;->balance_text:I

    .line 106
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 111
    sget v0, Lcom/sekai/bank/R$id;->change_pin_card:I

    .line 112
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v5, :cond_0

    .line 117
    sget v0, Lcom/sekai/bank/R$id;->email_text:I

    .line 118
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 123
    sget v0, Lcom/sekai/bank/R$id;->logout_card:I

    .line 124
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v7, :cond_0

    .line 129
    sget v0, Lcom/sekai/bank/R$id;->progress_bar:I

    .line 130
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    .line 135
    sget v0, Lcom/sekai/bank/R$id;->settings_about:I

    .line 136
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 141
    sget v0, Lcom/sekai/bank/R$id;->settings_notifications:I

    .line 142
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    .line 147
    sget v0, Lcom/sekai/bank/R$id;->settings_security:I

    .line 148
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 153
    sget v0, Lcom/sekai/bank/R$id;->settings_support:I

    .line 154
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 159
    sget v0, Lcom/sekai/bank/R$id;->user_initial:I

    .line 160
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 165
    sget v0, Lcom/sekai/bank/R$id;->username_text:I

    .line 166
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 171
    new-instance v0, Lcom/sekai/bank/databinding/FragmentProfileBinding;

    move-object v3, p0

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/sekai/bank/databinding/FragmentProfileBinding;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/FragmentProfileBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, v0, v1}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentProfileBinding;
    .locals 2

    .line 92
    sget v0, Lcom/sekai/bank/R$layout;->fragment_profile:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->bind(Landroid/view/View;)Lcom/sekai/bank/databinding/FragmentProfileBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/sekai/bank/databinding/FragmentProfileBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/core/widget/NestedScrollView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sekai/bank/databinding/FragmentProfileBinding;->rootView:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method
