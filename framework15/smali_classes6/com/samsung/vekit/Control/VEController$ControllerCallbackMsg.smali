.class Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;
.super Ljava/lang/Object;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerCallbackMsg"
.end annotation


# static fields
.field public static final blacklist AUDIO_PCM_UPDATE:I = 0xc9

.field public static final blacklist ERROR:I = 0x64

.field public static final blacklist ERROR_ON_ITEM:I = 0x65

.field public static final blacklist EXPORT_COMPLETE:I = 0x2

.field public static final blacklist EXPORT_PAUSED:I = 0x5

.field public static final blacklist EXPORT_STARTED:I = 0x4

.field public static final blacklist INFO:I = 0xc8

.field public static final blacklist PLAYBACK_COMPLETE:I = 0x1

.field public static final blacklist SHOW_COMPLETE:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/vekit/Control/VEController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
