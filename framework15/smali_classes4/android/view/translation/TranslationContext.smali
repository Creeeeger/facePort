.class public final Landroid/view/translation/TranslationContext;
.super Ljava/lang/Object;
.source "TranslationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationContext$Builder;,
        Landroid/view/translation/TranslationContext$TranslationFlag;,
        Landroid/view/translation/TranslationContext$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DEFINITIONS:I = 0x4

.field public static final whitelist FLAG_LOW_LATENCY:I = 0x1

.field public static final whitelist FLAG_TRANSLITERATION:I = 0x2


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mTranslationFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultActivityId()Landroid/app/assist/ActivityId;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultActivityId()Landroid/app/assist/ActivityId;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationFlags()I
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationContext;->defaultTranslationFlags()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationContext$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    sget-object v1, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/translation/TranslationSpec;

    sget-object v2, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {p0, p1}, Landroid/view/translation/TranslationContext;->unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;

    move-result-object v4

    iput-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v5, Landroid/annotation/NonNull;

    iget-object v6, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v5, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    iget v5, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object v4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILandroid/app/assist/ActivityId;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p3, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p4, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultActivityId()Landroid/app/assist/ActivityId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTranslationFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist parcelActivityId(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method

.method static blacklist singleTranslationFlagToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "FLAG_DEFINITIONS"

    return-object v0

    :pswitch_2
    const-string v0, "FLAG_TRANSLITERATION"

    return-object v0

    :pswitch_3
    const-string v0, "FLAG_LOW_LATENCY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist translationFlagToString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist unparcelActivityId(Landroid/os/Parcel;)Landroid/app/assist/ActivityId;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/assist/ActivityId;

    invoke-direct {v1, p1}, Landroid/app/assist/ActivityId;-><init>(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-object v0
.end method

.method public whitelist getSourceSpec()Landroid/view/translation/TranslationSpec;
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist getTargetSpec()Landroid/view/translation/TranslationSpec;
    .locals 1

    iget-object v0, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist getTranslationFlags()I
    .locals 1

    iget v0, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationContext { sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-static {v1}, Landroid/view/translation/TranslationContext;->translationFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mActivityId:Landroid/app/assist/ActivityId;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/view/translation/TranslationContext;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/view/translation/TranslationContext;->mTranslationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1, p2}, Landroid/view/translation/TranslationContext;->parcelActivityId(Landroid/os/Parcel;I)V

    return-void
.end method
