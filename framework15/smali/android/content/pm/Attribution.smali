.class public final Landroid/content/pm/Attribution;
.super Ljava/lang/Object;
.source "Attribution.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Attribution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLabel:I

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/Attribution$1;

    invoke-direct {v0}, Landroid/content/pm/Attribution$1;-><init>()V

    sput-object v0, Landroid/content/pm/Attribution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Landroid/content/pm/Attribution;->mLabel:I

    const-class v2, Landroid/annotation/IdRes;

    iget v3, p0, Landroid/content/pm/Attribution;->mLabel:I

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/content/pm/Attribution;->mLabel:I

    const-class v0, Landroid/annotation/IdRes;

    iget v1, p0, Landroid/content/pm/Attribution;->mLabel:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

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

.method public whitelist getLabel()I
    .locals 1

    iget v0, p0, Landroid/content/pm/Attribution;->mLabel:I

    return v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/Attribution;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
