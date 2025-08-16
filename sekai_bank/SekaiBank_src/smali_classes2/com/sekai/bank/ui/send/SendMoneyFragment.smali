.class public Lcom/sekai/bank/ui/send/SendMoneyFragment;
.super Landroidx/fragment/app/Fragment;
.source "SendMoneyFragment.java"


# static fields
.field private static final PIN_VERIFICATION_REQUEST:I = 0x3ea


# instance fields
.field private apiService:Lcom/sekai/bank/network/ApiService;

.field private binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

.field private currentUser:Lcom/sekai/bank/models/User;

.field private delayedTransactionManager:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

.field private isScheduled:Z

.field private isValidatingRecipient:Z

.field private keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private pendingAmount:D

.field private pendingMessage:Ljava/lang/String;

.field private pendingRecipientUsername:Ljava/lang/String;

.field private recipientUser:Lcom/sekai/bank/models/User;

.field private selectedDateTime:Ljava/util/Calendar;

.field private final textWatcher:Landroid/text/TextWatcher;

.field private tokenManager:Lcom/sekai/bank/utils/TokenManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecipientUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/models/User;
    .locals 0

    iget-object p0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;Lcom/sekai/bank/models/User;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisValidatingRecipient(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isValidatingRecipient:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrecipientUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;Lcom/sekai/bank/models/User;)V
    .locals 0

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearForm(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->clearForm()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadCurrentUser(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->loadCurrentUser()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLoadingState(Lcom/sekai/bank/ui/send/SendMoneyFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setLoadingState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowConfirmationDialog(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->showConfirmationDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBalanceDisplay(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->updateBalanceDisplay()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isValidatingRecipient:Z

    .line 53
    iput-boolean v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isScheduled:Z

    .line 161
    new-instance v0, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$2;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    iput-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private clearForm()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iput-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    return-void
.end method

.method private findRecipient()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 340
    invoke-direct {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setLoadingState(Z)V

    .line 342
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v1, v0}, Lcom/sekai/bank/network/ApiService;->findUserByUsername(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$5;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$5;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private loadCurrentUser()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v0}, Lcom/sekai/bank/network/ApiService;->getUserProfile()Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$3;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private sendMoney(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 425
    invoke-direct/range {v0 .. v6}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->sendMoney(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method private sendMoney(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 9

    const/4 v0, 0x1

    .line 429
    invoke-direct {p0, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setLoadingState(Z)V

    if-eqz p6, :cond_2

    .line 432
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p6, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->delayedTransactionManager:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    .line 438
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sekai/bank/models/User;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 433
    invoke-virtual/range {v1 .. v8}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;->scheduleTransaction(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1

    const/4 p2, 0x0

    .line 442
    invoke-direct {p0, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setLoadingState(Z)V

    if-eqz p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Transaction scheduled for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MMM dd, yyyy \'at\' hh:mm a"

    .line 446
    invoke-static {p3, p6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 445
    invoke-static {p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showSuccessSnackbar(Landroid/view/View;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->clearForm()V

    goto :goto_1

    .line 449
    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string p2, "Failed to schedule transaction"

    invoke-static {p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 455
    :cond_2
    new-instance p6, Lcom/sekai/bank/models/requests/SendMoneyRequest;

    move-object v0, p6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sekai/bank/models/requests/SendMoneyRequest;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {p1, p6}, Lcom/sekai/bank/network/ApiService;->sendMoney(Lcom/sekai/bank/models/requests/SendMoneyRequest;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private setLoadingState(Z)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->sendButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->sendButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    sget p1, Lcom/sekai/bank/R$string;->loading:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/sekai/bank/R$string;->send_button:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupKeyboardHandling()V
    .locals 2

    .line 84
    new-instance v0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    iput-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 114
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setupUI()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->sendButton:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->scheduleCheckbox:Lcom/google/android/material/checkbox/MaterialCheckBox;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->datePickerButton:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda3;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->timePickerButton:Landroid/widget/Button;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda4;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda5;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda6;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private showConfirmationDialog()V
    .locals 7

    .line 380
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 383
    iget-object v2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v2, v2, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->messageInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 386
    iget-boolean v3, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isScheduled:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->validateScheduledTime()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 392
    :cond_1
    iget-boolean v3, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isScheduled:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz v3, :cond_2

    .line 393
    const-string v4, "MMM dd, yyyy \'at\' hh:mm a"

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Schedule $"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.2f"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v5}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 396
    :cond_2
    sget v3, Lcom/sekai/bank/R$string;->send_confirmation_message:I

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v5}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 400
    :goto_0
    iget-object v4, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    .line 401
    invoke-virtual {v4}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v3

    sget v4, Lcom/sekai/bank/R$string;->confirm:I

    .line 402
    invoke-virtual {p0, v4}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;DLjava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->sekai_blue_accent:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setBackgroundTint(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 406
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->white:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sekai/bank/R$color;->sekai_yellow_accent:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private showDatePicker()V
    .locals 8

    .line 553
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 558
    :cond_0
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 559
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda7;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    const/4 v1, 0x1

    .line 567
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 568
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 573
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 575
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->show()V

    return-void
.end method

.method private showPinDialog(Ljava/lang/String;DLjava/lang/String;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingRecipientUsername:Ljava/lang/String;

    .line 415
    iput-wide p2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingAmount:D

    .line 416
    iput-object p4, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingMessage:Ljava/lang/String;

    .line 419
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    const-string p2, "mode"

    const-string p3, "verify"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3ea

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showTimePicker()V
    .locals 8

    .line 579
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 584
    :cond_0
    new-instance v7, Landroid/app/TimePickerDialog;

    .line 585
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$$ExternalSyntheticLambda8;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    const/16 v1, 0xb

    .line 596
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    .line 597
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 601
    invoke-virtual {v7}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method

.method private updateBalanceDisplay()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->balanceText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Available: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    invoke-virtual {v3}, Lcom/sekai/bank/models/User;->getBalance()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateDateButton()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 606
    const-string v1, "MMM dd, yyyy"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->datePickerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateTimeButton()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 613
    const-string v1, "hh:mm a"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->timePickerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private validateAmount()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 324
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_1

    .line 326
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_invalid_amount:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sekai/bank/models/User;->getBalance()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_insufficient_funds:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_invalid_amount:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private validateInputs()Z
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->field_required:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->username_too_short:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_cannot_send_to_self:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 234
    :goto_1
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->field_required:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 240
    :cond_3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_4

    .line 242
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_invalid_amount:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 244
    :cond_4
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->currentUser:Lcom/sekai/bank/models/User;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/sekai/bank/models/User;->getBalance()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_5

    .line 245
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_insufficient_funds:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_2

    .line 249
    :catch_0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->amountInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/sekai/bank/R$string;->error_invalid_amount:I

    invoke-virtual {p0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_2
    return v2
.end method

.method private validateRecipient()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-boolean v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isValidatingRecipient:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 267
    iput-boolean v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isValidatingRecipient:Z

    .line 268
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object v1, v1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientStatus:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    invoke-interface {v1, v0}, Lcom/sekai/bank/network/ApiService;->findUserByUsername(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;

    invoke-direct {v1, p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$4;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private validateScheduledTime()Z
    .locals 6

    .line 619
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    const-string v2, "Please select both date and time for scheduling"

    invoke-static {v0, v2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return v1

    .line 624
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    const-string v2, "Scheduled time must be in the future"

    invoke-static {v0, v2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method synthetic lambda$setupUI$0$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/view/View;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->validateInputs()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->findRecipient()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupUI$1$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 127
    iput-boolean p2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isScheduled:Z

    .line 128
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->scheduleLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    .line 131
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->datePickerButton:Landroid/widget/Button;

    const-string p2, "Select Date"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->timePickerButton:Landroid/widget/Button;

    const-string p2, "Select Time"

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$setupUI$2$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/view/View;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->showDatePicker()V

    return-void
.end method

.method synthetic lambda$setupUI$3$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/view/View;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->showTimePicker()V

    return-void
.end method

.method synthetic lambda$setupUI$4$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/view/View;Z)V
    .locals 0

    .line 0
    if-nez p2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    iget-object p1, p1, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->recipientInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->validateRecipient()V

    :cond_0
    return-void
.end method

.method synthetic lambda$setupUI$5$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/view/View;Z)V
    .locals 0

    .line 0
    if-nez p2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->validateAmount()V

    :cond_0
    return-void
.end method

.method synthetic lambda$showConfirmationDialog$6$com-sekai-bank-ui-send-SendMoneyFragment(DLjava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 403
    iget-object p4, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->recipientUser:Lcom/sekai/bank/models/User;

    invoke-virtual {p4}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->showPinDialog(Ljava/lang/String;DLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showDatePicker$7$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 561
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-nez p1, :cond_0

    .line 562
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 565
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->updateDateButton()V

    return-void
.end method

.method synthetic lambda$showTimePicker$8$com-sekai-bank-ui-send-SendMoneyFragment(Landroid/widget/TimePicker;II)V
    .locals 1

    .line 587
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-nez p1, :cond_0

    .line 588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    .line 590
    :cond_0
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 591
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 592
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    const/16 p2, 0xd

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 593
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    const/16 p2, 0xe

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 594
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->updateTimeButton()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 521
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 526
    const-string p1, "pin"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 527
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingRecipientUsername:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 528
    iget-boolean p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->isScheduled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->selectedDateTime:Ljava/util/Calendar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    move-object v7, p1

    goto :goto_0

    :cond_0
    move-object v7, v0

    .line 529
    :goto_0
    iget-object v2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingRecipientUsername:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingAmount:D

    iget-object v5, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingMessage:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->sendMoney(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_1

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string p2, "PIN verification cancelled"

    invoke-static {p1, p2}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorSnackbar(Landroid/view/View;Ljava/lang/String;)V

    .line 537
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingRecipientUsername:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 538
    iput-wide p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingAmount:D

    .line 539
    iput-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->pendingMessage:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p3, 0x0

    .line 65
    invoke-static {p1, p2, p3}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    .line 66
    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 545
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 546
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->keyboardLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->binding:Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getApiClient()Lcom/sekai/bank/network/ApiClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/network/ApiClient;->getApiService()Lcom/sekai/bank/network/ApiService;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->apiService:Lcom/sekai/bank/network/ApiService;

    .line 75
    invoke-static {}, Lcom/sekai/bank/SekaiApplication;->getInstance()Lcom/sekai/bank/SekaiApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/SekaiApplication;->getTokenManager()Lcom/sekai/bank/utils/TokenManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->tokenManager:Lcom/sekai/bank/utils/TokenManager;

    .line 76
    new-instance p1, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    invoke-virtual {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment;->delayedTransactionManager:Lcom/sekai/bank/utils/delayed_transaction/DelayedTransactionManager;

    .line 78
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setupKeyboardHandling()V

    .line 79
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->setupUI()V

    .line 80
    invoke-direct {p0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->loadCurrentUser()V

    return-void
.end method
