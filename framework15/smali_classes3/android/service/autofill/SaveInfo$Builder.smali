.class public final Landroid/service/autofill/SaveInfo$Builder;
.super Ljava/lang/Object;
.source "SaveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/SaveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mFlags:I

.field private greylist-max-o mNegativeActionListener:Landroid/content/IntentSender;

.field private greylist-max-o mNegativeButtonStyle:I

.field private greylist-max-o mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private blacklist mPositiveButtonStyle:I

.field private final greylist-max-o mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private greylist-max-o mSanitizerIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSanitizers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/service/autofill/InternalSanitizer;",
            "[",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSemNegativeSecondActionListener:Landroid/content/IntentSender;

.field private greylist-max-o mTriggerId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mType:I

.field private greylist-max-o mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemNegativeSecondActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method public constructor whitelist <init>(I[Landroid/view/autofill/AutofillId;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mType:I

    invoke-static {p2}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public varargs whitelist addSanitizer(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 6

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ids cannot be empty or null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    instance-of v0, p1, Landroid/service/autofill/InternalSanitizer;

    const-string/jumbo v1, "not provided by Android System: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string v4, "already added %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizerIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mSanitizers:Landroid/util/ArrayMap;

    move-object v1, p1

    check-cast v1, Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/SaveInfo;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/SaveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V

    return-object v0
.end method

.method public blacklist semSetNegativeSecondAction(ILandroid/content/IntentSender;Landroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    iput-object p3, p0, Landroid/service/autofill/SaveInfo$Builder;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCustomDescription(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can call setDescription() or setCustomDescription(), but not both"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public whitelist setNegativeAction(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x2

    const-string/jumbo v1, "style"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeButtonStyle:I

    iput-object p2, p0, Landroid/service/autofill/SaveInfo$Builder;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object p0
.end method

.method public whitelist setOptionalIds([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public whitelist setPositiveAction(I)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    const-string/jumbo v1, "style"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iput p1, p0, Landroid/service/autofill/SaveInfo$Builder;->mPositiveButtonStyle:I

    return-object p0
.end method

.method public whitelist setTriggerId(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public whitelist setValidator(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/SaveInfo$Builder;->throwIfDestroyed()V

    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    const-string/jumbo v1, "not provided by Android System: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo$Builder;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object p0
.end method
