.class public final Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;
.super Ljava/lang/Object;
.source "InlineSuggestionsRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAutofillId:Landroid/view/autofill/AutofillId;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mUiExtras:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo$1;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sget-object v1, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    iget-object v4, v2, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUiExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InlineSuggestionsRequestInfo { componentName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autofillId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiExtras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

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

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;->mUiExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
