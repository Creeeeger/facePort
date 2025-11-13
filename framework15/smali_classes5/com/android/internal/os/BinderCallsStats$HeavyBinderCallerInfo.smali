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
.field public blacklist mExtraInfo:Ljava/lang/String;

.field public blacklist mPackageName:Ljava/lang/String;

.field public blacklist mRatio:F

.field public blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    iput p3, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    iput-object p4, p0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mExtraInfo:Ljava/lang/String;

    return-void
.end method

.method public static blacklist create(Ljava/lang/String;IFLjava/lang/String;)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;
    .locals 1

    new-instance v0, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    return-object v0
.end method
