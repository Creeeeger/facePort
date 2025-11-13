.class Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;
.super Ljava/lang/Object;
.source "MaintenanceModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloudInfo"
.end annotation


# instance fields
.field blacklist introDescription:Ljava/lang/String;

.field blacklist isSupported:Z

.field blacklist retentionPeriod:I


# direct methods
.method constructor blacklist <init>(ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->isSupported:Z

    iput p2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->retentionPeriod:I

    iput-object p3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->introDescription:Ljava/lang/String;

    return-void
.end method
