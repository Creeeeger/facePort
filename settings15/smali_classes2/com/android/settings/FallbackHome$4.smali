.class public final Lcom/android/settings/FallbackHome$4;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method public constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$4;->this$0:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 0

    sget p1, Lcom/android/settings/FallbackHome;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/FallbackHome$4;->this$0:Lcom/android/settings/FallbackHome;

    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method
