.class public final Landroid/view/translation/TranslationRequest;
.super Ljava/lang/Object;
.source "TranslationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationRequest$Builder;,
        Landroid/view/translation/TranslationRequest$RequestFlags;,
        Landroid/view/translation/TranslationRequest$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DICTIONARY_RESULT:I = 0x2

.field public static final whitelist FLAG_PARTIAL_RESPONSES:I = 0x8

.field public static final whitelist FLAG_TRANSLATION_RESULT:I = 0x1

.field public static final whitelist FLAG_TRANSLITERATION_RESULT:I = 0x4


# instance fields
.field private final blacklist mFlags:I

.field private final blacklist mTranslationRequestValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mViewTranslationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultFlags()I
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultFlags()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationRequestValues()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultTranslationRequestValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultViewTranslationRequests()Ljava/util/List;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationRequest;->defaultViewTranslationRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationRequest$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object p2, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-class v2, Landroid/view/translation/TranslationRequestValue;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/view/translation/TranslationRequestValue;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-class v3, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/view/translation/ViewTranslationRequest;

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    iput v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    iget v3, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    iput-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultFlags()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist defaultTranslationRequestValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultViewTranslationRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist requestFlagsToString(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/view/translation/TranslationRequest$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/translation/TranslationRequest$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lcom/android/internal/util/BitUtils;->flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist singleRequestFlagsToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "FLAG_PARTIAL_RESPONSES"

    return-object v0

    :sswitch_1
    const-string v0, "FLAG_TRANSLITERATION_RESULT"

    return-object v0

    :sswitch_2
    const-string v0, "FLAG_DICTIONARY_RESULT"

    return-object v0

    :sswitch_3
    const-string v0, "FLAG_TRANSLATION_RESULT"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    return v0
.end method

.method public whitelist getTranslationRequestValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getViewTranslationRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/translation/ViewTranslationRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationRequest { flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    invoke-static {v1}, Landroid/view/translation/TranslationRequest;->requestFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationRequestValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTranslationRequests = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

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
    .locals 1

    iget v0, p0, Landroid/view/translation/TranslationRequest;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mTranslationRequestValues:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/view/translation/TranslationRequest;->mViewTranslationRequests:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
