.class public Landroid/hardware/scontext/SContextAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SContextAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist checkAttribute()Z
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->checkAttribute()Z

    move-result v0

    return v0
.end method
