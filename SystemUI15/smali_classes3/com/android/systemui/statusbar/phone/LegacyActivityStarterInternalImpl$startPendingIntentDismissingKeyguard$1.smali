.class public final Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animate:Z

.field public final synthetic $collapse:Z

.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic $willLaunchResolverActivity:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Ljava/lang/Runnable;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$collapse:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$willLaunchResolverActivity:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$runnable:Ljava/lang/Runnable;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$collapse:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$willLaunchResolverActivity:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;->$animate:Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x52

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;->executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V

    return-void
.end method
