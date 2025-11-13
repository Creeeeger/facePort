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

    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILandroid/content/IntentSender;Landroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    iput p2, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    iput-object p4, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    iput-object p5, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    iput p3, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    iput-object p6, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    iput-object p7, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    iput-object p8, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    iput p9, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    iput-object p10, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    iput-object p11, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    iput-object p12, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iput-object p13, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    iput-object p14, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmType(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmNegativeActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSemNegativeSecondActionListener(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmPositiveButtonStyle(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmRequiredIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmOptionalIds(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmDescription(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmFlags(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmCustomDescription(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmValidator(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Landroid/service/autofill/InternalSanitizer;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    new-array v1, v0, [[Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InternalSanitizer;

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmSanitizers(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->-$$Nest$fgetmTriggerId(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method

.method public static blacklist copy(Landroid/service/autofill/SaveInfo;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Landroid/service/autofill/SaveInfo;

    iget v2, v0, Landroid/service/autofill/SaveInfo;->mType:I

    iget v3, v0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    iget v4, v0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    iget-object v5, v0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    iget-object v6, v0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    iget-object v7, v0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static/range {p1 .. p1}, Landroid/service/autofill/AutofillServiceHelper;->assertValid([Landroid/view/autofill/AutofillId;)[Landroid/view/autofill/AutofillId;

    move-result-object v8

    iget-object v9, v0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    iget v10, v0, Landroid/service/autofill/SaveInfo;->mFlags:I

    iget-object v11, v0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    iget-object v12, v0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    iget-object v13, v0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iget-object v14, v0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    iget-object v15, v0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/service/autofill/SaveInfo;-><init>(IIILandroid/content/IntentSender;Landroid/content/IntentSender;[Landroid/view/autofill/AutofillId;[Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;ILandroid/service/autofill/CustomDescription;Landroid/service/autofill/InternalValidator;[Landroid/service/autofill/InternalSanitizer;[[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-object v16
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCustomDescription()Landroid/service/autofill/CustomDescription;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public greylist-max-o getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public greylist-max-o getNegativeActionListener()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public greylist-max-o getNegativeActionStyle()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public greylist-max-o getOptionalIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getPositiveActionStyle()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    return v0
.end method

.method public greylist-max-o getRequiredIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    return-object v0
.end method

.method public greylist-max-o getSanitizerValues()[[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getTriggerId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public greylist-max-o getType()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public greylist-max-o getValidator()Landroid/service/autofill/InternalValidator;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public blacklist semGetNegativeSecondActionListener()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SaveInfo: [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mType:I

    int-to-long v1, v1

    const-class v3, Landroid/service/autofill/SaveInfo;

    const-string v4, "SAVE_DATA_TYPE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", negative style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    int-to-long v1, v1

    const-string v4, "NEGATIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positive style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    int-to-long v1, v1

    const-string v4, "POSITIVE_BUTTON_STYLE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_1

    const-string v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    if-eqz v1, :cond_3

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_4

    const-string v1, ", customDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    if-eqz v1, :cond_5

    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v1, :cond_6

    const-string v1, ", sanitizerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_7

    const-string v1, ", sanitizerValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_8

    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSemNegativeSecondActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mPositiveButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
