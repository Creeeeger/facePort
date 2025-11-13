.class public final Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/util/UtilFactory;


# instance fields
.field public final mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public final mProvider:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Lcom/samsung/android/globalactions/util/UtilFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class p0, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-virtual {v0, p0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/systemui/globalactions/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p0, Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/systemui/globalactions/util/ActivityStarterWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    const-class p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {p3, p2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    const-class p2, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    const-class p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {p3, p2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    const-class p2, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/KioskModeWrapper;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/systemui/globalactions/util/KioskModeWrapper;

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/systemui/globalactions/util/SemEnterpriseDeviceManagerWrapper;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/util/SystemUIUtilFactory;->mDefaultUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    invoke-interface {p0, p1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
