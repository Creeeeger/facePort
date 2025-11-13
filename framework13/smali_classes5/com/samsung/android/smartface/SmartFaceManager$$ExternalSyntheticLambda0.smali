.class public final synthetic Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/smartface/SmartFaceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/smartface/SmartFaceManager;

    return-void
.end method


# virtual methods
.method public final blacklist onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/smartface/SmartFaceManager;->lambda$checkForSmartStay$0$com-samsung-android-smartface-SmartFaceManager(Lcom/samsung/android/smartface/FaceInfo;I)V

    return-void
.end method
