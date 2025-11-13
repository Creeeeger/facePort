.class public final Landroid/credentials/selection/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/selection/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFrameworkExtrasIntent:Landroid/content/Intent;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSlice:Landroid/app/slice/Slice;

.field private final blacklist mSubkey:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/credentials/selection/Entry$1;

    invoke-direct {v0}, Landroid/credentials/selection/Entry$1;-><init>()V

    sput-object v0, Landroid/credentials/selection/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/Slice;

    iput-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Landroid/credentials/selection/Entry;->mPendingIntent:Landroid/app/PendingIntent;

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/selection/Entry-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/credentials/selection/Entry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    iput-object p2, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    iput-object p4, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFrameworkExtrasIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlice()Landroid/app/slice/Slice;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    return-object v0
.end method

.method public whitelist getSubkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSubkey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mSlice:Landroid/app/slice/Slice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/credentials/selection/Entry;->mFrameworkExtrasIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
