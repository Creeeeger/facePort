.class public Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeavyBinderCallerInfo"
.end annotation


# instance fields
.field public blacklist mPackageName:Ljava/lang/String;

.field public blacklist mRatio:F

.field public blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IF)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ratio"    # F

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 630
    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    .line 631
    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    .line 632
    return-void
.end method

.method public static blacklist create(Ljava/lang/String;IF)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "ratio"    # F

    .line 635
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;-><init>(Ljava/lang/String;IF)V

    return-object v0
.end method
