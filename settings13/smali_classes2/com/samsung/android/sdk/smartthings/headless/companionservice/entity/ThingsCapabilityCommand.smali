.class public final Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;
.super Ljava/lang/Object;
.source "ThingsCapabilityCommand.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public arguments:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommandArgument;

.field public capability:Ljava/lang/String;

.field public commandId:Ljava/lang/String;

.field public commandUuid:Ljava/lang/String;

.field public componentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommandArgument;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommand;->arguments:[Lcom/samsung/android/sdk/smartthings/headless/companionservice/entity/ThingsCapabilityCommandArgument;

    return-void
.end method
