.class public Lcom/samsung/android/hardware/context/SemContextShakeMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextShakeMotion.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextShakeMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist START:I = 0x1

.field public static final blacklist STOP:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 127
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextShakeMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->mContext:Landroid/os/Bundle;

    .line 149
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 156
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->mContext:Landroid/os/Bundle;

    .line 202
    return-void
.end method


# virtual methods
.method public blacklist getShakeStatus()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 177
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->mContext:Landroid/os/Bundle;

    .line 178
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextShakeMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method
