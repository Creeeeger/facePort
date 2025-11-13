.class final Lcom/samsung/android/vr/GearVrManager$ARStateCallback;
.super Lcom/samsung/android/vr/IARStateCallbacks$Stub;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ARStateCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/vr/GearVrManager;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$ARStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IARStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$ARStateCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager$ARStateCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onARStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "type"    # I

    .line 787
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$ARStateCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->-$$Nest$mhandleARStateEvent(Lcom/samsung/android/vr/GearVrManager;II)V

    .line 788
    return-void
.end method
