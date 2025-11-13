.class public final synthetic Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "QSMumButton"

    const-string v0, "MumAndDexHelper receive SettingsHelper callback !"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/buttons/QSMumButton$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/qs/buttons/QSMumButton$MumAndDexHelper;->this$0:Lcom/android/systemui/qs/buttons/QSMumButton;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
