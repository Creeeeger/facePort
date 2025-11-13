.class public final Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
.super Ljava/lang/Object;
.source "AmbientContextDetectionServiceStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.ambientcontext.AmbientContextServiceStatusBundleKey"


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mStatusCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$1;

    invoke-direct {v0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$1;-><init>()V

    sput-object v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    const-class v0, Landroid/app/ambientcontext/AmbientContextManager$StatusCode;

    const/4 v1, 0x0

    iget v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    const-class v3, Landroid/app/ambientcontext/AmbientContextManager$StatusCode;

    iget v4, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmbientContextDetectionServiceStatus { statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mStatusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
