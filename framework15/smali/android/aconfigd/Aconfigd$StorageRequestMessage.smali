.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageRequestMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$ListStorageMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$ResetStorageMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$FlagQueryMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$RemoveLocalOverrideMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$OTAFlagStagingMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$FlagOverrideMessage;,
        Landroid/aconfigd/Aconfigd$StorageRequestMessage$NewStorageMessage;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_OVERRIDE_MESSAGE:J = 0x10b00000002L

.field public static final blacklist FLAG_QUERY_MESSAGE:J = 0x10b00000004L

.field public static final blacklist LIST_STORAGE_MESSAGE:J = 0x10b00000007L

.field public static final blacklist NEW_STORAGE_MESSAGE:J = 0x10b00000001L

.field public static final blacklist OTA_STAGING_MESSAGE:J = 0x10b00000003L

.field public static final blacklist REMOVE_LOCAL_OVERRIDE_MESSAGE:J = 0x10b00000005L

.field public static final blacklist RESET_STORAGE_MESSAGE:J = 0x10b00000006L


# instance fields
.field final synthetic blacklist this$0:Landroid/aconfigd/Aconfigd;


# direct methods
.method public constructor blacklist <init>(Landroid/aconfigd/Aconfigd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/aconfigd/Aconfigd$StorageRequestMessage;->this$0:Landroid/aconfigd/Aconfigd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
