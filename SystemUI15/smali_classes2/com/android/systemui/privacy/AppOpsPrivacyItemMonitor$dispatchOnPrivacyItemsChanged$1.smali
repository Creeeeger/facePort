.class public final Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $cb:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;->$cb:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/privacy/AppOpsPrivacyItemMonitor$dispatchOnPrivacyItemsChanged$1;->$cb:Lcom/android/systemui/privacy/PrivacyItemMonitor$Callback;

    check-cast p0, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/android/systemui/privacy/PrivacyItemController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyItemController$privacyItemMonitorCallback$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->update$4$1()V

    return-void
.end method
