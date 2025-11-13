.class public final Landroid/service/autofill/SaveInfo;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveInfo$Builder;,
        Landroid/service/autofill/SaveInfo$SaveInfoFlags;,
        Landroid/service/autofill/SaveInfo$SaveDataType;,
        Landroid/service/autofill/SaveInfo$PositiveButtonStyle;,
        Landroid/service/autofill/SaveInfo$NegativeButtonStyle;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/SaveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DELAY_SAVE:I = 0x4

.field public static final whitelist FLAG_DONT_SAVE_ON_FINISH:I = 0x2

.field public static final whitelist FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE:I = 0x1

.field public static final whitelist NEGATIVE_BUTTON_STYLE_CANCEL:I = 0x0

.field public static final whitelist NEGATIVE_BUTTON_STYLE_NEVER:I = 0x2

.field public static final whitelist NEGATIVE_BUTTON_STYLE_REJECT:I = 0x1

.field public static final whitelist POSITIVE_BUTTON_STYLE_CONTINUE:I = 0x1

.field public static final whitelist POSITIVE_BUTTON_STYLE_SAVE:I = 0x0

.field public static final whitelist SAVE_DATA_TYPE_ADDRESS:I = 0x2

.field public static final whitelist SAVE_DATA_TYPE_CREDIT_CARD:I = 0x4

.field public static final whitelist SAVE_DATA_TYPE_DEBIT_CARD:I = 0x20

.field public static final whitelist SAVE_DATA_TYPE_EMAIL_ADDRESS:I = 0x10

.field public static final whitelist SAVE_DATA_TYPE_GENERIC:I = 0x0

.field public static final whitelist SAVE_DATA_TYPE_GENERIC_CARD:I = 0x80

.field public static final whitelist SAVE_DATA_TYPE_PASSWORD:I = 0x1

.field public static final whitelist SAVE_DATA_TYPE_PAYMENT_CARD:I = 0x40

.field public static final whitelist SAVE_DATA_TYPE_USERNAME:I = 0x8

.field public static final blacklist SEM_NEGATIVE_BUTTON_STYLE_BOTH:I = 0x3e7


# instance fields
.field private final greylist-max-o mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private final greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mNegativeActionListener:Landroid/content/IntentSender;

.field private final greylist-max-o mNegativeButtonStyle:I

.field private final greylist-max-o mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final blacklist mPositiveButtonStyle:I

.field private final greylist-max-o mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

.field private final greylist-max-o mSanitizerValues:[[Landroid/view/autofill/AutofillId;

.field private final blacklist mSemNegativeSecondActionListener:Landroid/content/IntentSender;

.field private final greylist-max-o mTriggerId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 931
    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/service/autofill/SaveInfo$Builder;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    .line 348
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    .line 349
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    .line 350
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSemNegativeSecondActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    .line 351
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    .line 352
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    .line 353
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    .line 354
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    .line 355
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    .line 356
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    .line 357
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    .line 358
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 360
    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    goto :goto_1

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 363
    .local v0, "size":I
    new-array v1, v0, [Landroid/service/autofill/InternalSanitizer;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    .line 364
    new-array v1, v0, [[Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    .line 365
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 366
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InternalSanitizer;

    aput-object v3, v2, v1

    .line 367
    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    aput-object v3, v2, v1

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    .line 371
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCustomDescription()Landroid/service/autofill/CustomDescription;
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 417
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    .line 412
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public greylist-max-o getNegativeActionListener()Landroid/content/IntentSender;
    .locals 1

    .line 380
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public greylist-max-o getNegativeActionStyle()I
    .locals 1

    .line 375
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public greylist-max-o getOptionalIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    .line 402
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getPositiveActionStyle()I
    .locals 1

    .line 392
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    return v0
.end method

.method public greylist-max-o getRequiredIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;
    .locals 1

    .line 435
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    return-object v0
.end method

.method public greylist-max-o getSanitizerValues()[[Landroid/view/autofill/AutofillId;
    .locals 1

    .line 441
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getTriggerId()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 447
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    .line 407
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public greylist-max-o getValidator()Landroid/service/autofill/InternalValidator;
    .locals 1

    .line 429
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public blacklist semGetNegativeSecondActionListener()Landroid/content/IntentSender;
    .locals 1

    .line 386
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 859
    const-class v0, Landroid/service/autofill/SaveInfo;

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 861
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SaveInfo: [type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mType:I

    int-to-long v2, v2

    .line 862
    const-string v4, "SAVE_DATA_TYPE_"

    invoke-static {v0, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 863
    const-string v2, ", requiredIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 864
    const-string v2, ", negative style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    int-to-long v2, v2

    const-string v4, "NEGATIVE_BUTTON_STYLE_"

    invoke-static {v0, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 866
    const-string v2, ", positive style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    int-to-long v2, v2

    const-string v4, "POSITIVE_BUTTON_STYLE_"

    invoke-static {v0, v4, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_1

    .line 869
    const-string v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :cond_1
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 872
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 874
    :cond_2
    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    if-eqz v1, :cond_3

    .line 875
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    :cond_3
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_4

    .line 878
    const-string v1, ", customDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 880
    :cond_4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    if-eqz v1, :cond_5

    .line 881
    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 883
    :cond_5
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v1, :cond_6

    .line 884
    const-string v1, ", sanitizerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 886
    :cond_6
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_7

    .line 887
    const-string v1, ", sanitizerValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 889
    :cond_7
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_8

    .line 890
    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 893
    :cond_8
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 907
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 909
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 910
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 914
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 917
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 920
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 921
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 922
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v0, :cond_0

    .line 923
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 924
    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 927
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 928
    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    return-void
.end method
