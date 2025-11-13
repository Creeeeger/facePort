.class public final Lcom/android/server/SystemConfig$PermissionEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionEntry"
.end annotation


# instance fields
.field public blacklist gids:[I

.field public final blacklist name:Ljava/lang/String;

.field public blacklist perUser:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "perUser"    # Z

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    .line 240
    iput-boolean p2, p0, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    .line 241
    return-void
.end method
