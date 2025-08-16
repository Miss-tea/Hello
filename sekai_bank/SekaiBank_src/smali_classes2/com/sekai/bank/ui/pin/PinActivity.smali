.class public Lcom/sekai/bank/ui/pin/PinActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PinActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sekai/bank/ui/pin/PinActivity$PinState;
    }
.end annotation


# instance fields
.field private final MAX_PIN_LENGTH:I

.field private final MIN_PIN_LENGTH:I

.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

.field private currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

.field private enteredPin:Ljava/lang/String;

.field private firstPin:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private oldPin:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetenteredPin(Lcom/sekai/bank/ui/pin/PinActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmode(Lcom/sekai/bank/ui/pin/PinActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoldPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->oldPin:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->setLoadingState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mverifyPinInBackground(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->verifyPinInBackground(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->oldPin:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const/4 v0, 0x6

    .line 31
    iput v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->MAX_PIN_LENGTH:I

    .line 32
    iput v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->MIN_PIN_LENGTH:I

    return-void
.end method

.method private changePin(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 354
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setLoadingState(Z)V

    .line 356
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    new-instance v1, Lcom/sekai/bank/models/requests/PinRequest;

    iget-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->oldPin:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/sekai/bank/models/requests/PinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sekai/bank/network/ApiService;->changePin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$4;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/pin/PinActivity$4;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private clearAndContinue()V
    .locals 1

    .line 202
    const-string v0, ""

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updatePinDots()V

    .line 204
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updateUIForCurrentState()V

    return-void
.end method

.method private handleBackPress()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setResult(I)V

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->finish()V

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 220
    iput-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 221
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_0

    .line 215
    :cond_3
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->OLD_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 216
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_0

    .line 210
    :cond_4
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 211
    iput-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    :goto_0
    return-void
.end method

.method private processPinEntry()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 149
    sget v0, Lcom/sekai/bank/R$string;->pin_too_short:I

    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->changePin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :cond_2
    sget v0, Lcom/sekai/bank/R$string;->pin_mismatch:I

    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 194
    iput-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 195
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto/16 :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN_CONFIRM:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 185
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_1

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->verifyCurrentPin(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setupPin(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_6
    sget v0, Lcom/sekai/bank/R$string;->pin_mismatch:I

    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 173
    iput-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_1

    .line 155
    :cond_7
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "setup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 157
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->CONFIRMATION:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 158
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_1

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 161
    :cond_9
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->OLD_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    .line 163
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->clearAndContinue()V

    goto :goto_1

    .line 160
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->verifyPin(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void
.end method

.method private setLoadingState(Z)V
    .locals 4

    .line 438
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButtonsContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setupPin(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setLoadingState(Z)V

    .line 281
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    new-instance v1, Lcom/sekai/bank/models/requests/PinRequest;

    invoke-direct {v1, p1}, Lcom/sekai/bank/models/requests/PinRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sekai/bank/network/ApiService;->setupPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity$2;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setupPinButtons()V
    .locals 2

    .line 57
    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    .line 69
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton3:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton4:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton5:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton6:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton7:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton8:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton9:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButton0:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButtonDelete:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButtonClear:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButtonSubmit:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/pin/PinActivity$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupUI()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->setupPinButtons()V

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 0

    .line 443
    invoke-static {p0, p1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updatePinDots()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot1:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 97
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 96
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot2:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 99
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 98
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot3:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 101
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 100
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot4:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    .line 103
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_3

    :cond_3
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 102
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot5:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    .line 105
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_4

    :cond_4
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 104
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinDot6:Landroid/view/View;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_5

    .line 107
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_filled:I

    goto :goto_5

    :cond_5
    sget v1, Lcom/sekai/bank/R$drawable;->pin_dot_empty:I

    .line 106
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->pinButtonSubmit:Landroid/widget/Button;

    .line 110
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    const/16 v1, 0x8

    .line 109
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private updateUIForCurrentState()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    const-string v1, "Confirm New PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    const-string v1, "Enter your new PIN again"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    const-string v1, "New PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    const-string v1, "Enter your new PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    const-string v1, "Current PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    const-string v1, "Enter your current PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_confirm_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_confirm_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "setup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_setup_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_setup_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    const-string v1, "verify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    const-string v1, "Verify PIN"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    const-string v1, "Enter your PIN to continue"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->titleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_login_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/ActivityPinBinding;->subtitleText:Landroid/widget/TextView;

    sget v1, Lcom/sekai/bank/R$string;->pin_login_subtitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private verifyCurrentPin(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 318
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setLoadingState(Z)V

    .line 320
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    new-instance v1, Lcom/sekai/bank/models/requests/PinRequest;

    invoke-direct {v1, p1}, Lcom/sekai/bank/models/requests/PinRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sekai/bank/network/ApiService;->verifyPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity$3;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private verifyPin(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 233
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setLoadingState(Z)V

    .line 235
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    new-instance v1, Lcom/sekai/bank/models/requests/PinRequest;

    invoke-direct {v1, p1}, Lcom/sekai/bank/models/requests/PinRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sekai/bank/network/ApiService;->verifyPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$1;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/pin/PinActivity$1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private verifyPinInBackground(Ljava/lang/String;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    new-instance v1, Lcom/sekai/bank/models/requests/PinRequest;

    invoke-direct {v1, p1}, Lcom/sekai/bank/models/requests/PinRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sekai/bank/network/ApiService;->verifyPin(Lcom/sekai/bank/models/requests/PinRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$5;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/pin/PinActivity$5;-><init>(Lcom/sekai/bank/ui/pin/PinActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$setupPinButtons$0$com-sekai-bank-ui-pin-PinActivity(Landroid/view/View;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 59
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updatePinDots()V

    .line 63
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->processPinEntry()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupPinButtons$1$com-sekai-bank-ui-pin-PinActivity(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updatePinDots()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupPinButtons$2$com-sekai-bank-ui-pin-PinActivity(Landroid/view/View;)V
    .locals 0

    .line 88
    const-string p1, ""

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updatePinDots()V

    return-void
.end method

.method synthetic lambda$setupPinButtons$3$com-sekai-bank-ui-pin-PinActivity(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->processPinEntry()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->currentState:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    sget-object v1, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    const-string v2, "verify"

    const-string v3, "login"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_1

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 455
    :cond_1
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->handleBackPress()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->setResult(I)V

    .line 453
    invoke-virtual {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/sekai/bank/databinding/ActivityPinBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sekai/bank/databinding/ActivityPinBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->binding:Lcom/sekai/bank/databinding/ActivityPinBinding;

    .line 42
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/ActivityPinBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->setContentView(Landroid/view/View;)V

    .line 44
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 45
    invoke-virtual {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 46
    const-string p1, "login"

    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity;->mode:Ljava/lang/String;

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->setupUI()V

    .line 49
    invoke-direct {p0}, Lcom/sekai/bank/ui/pin/PinActivity;->updateUIForCurrentState()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 461
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 462
    const-string v0, ""

    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->enteredPin:Ljava/lang/String;

    .line 463
    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->firstPin:Ljava/lang/String;

    .line 464
    iput-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity;->oldPin:Ljava/lang/String;

    return-void
.end method
