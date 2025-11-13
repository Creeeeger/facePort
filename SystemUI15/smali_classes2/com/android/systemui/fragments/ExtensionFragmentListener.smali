.class public final Lcom/android/systemui/fragments/ExtensionFragmentListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

.field public final mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field public final mId:I

.field public mOldClass:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    iput-object p5, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    iput p4, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    iget-object p0, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    move-object p1, p5

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    check-cast p1, Landroid/app/Fragment;

    invoke-virtual {p0, p4, p1, p3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    check-cast p5, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    const/4 p0, 0x0

    iput-object p0, p5, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    return-void
.end method

.method public static attachExtensonToFragment(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V
    .locals 7

    new-instance v6, Lcom/android/systemui/fragments/ExtensionFragmentListener;

    const-string v3, "QS"

    const v4, 0x7f0a0975

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fragments/ExtensionFragmentListener;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    iget-object p0, p2, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Lcom/android/systemui/plugins/FragmentBase;

    const-class v0, Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object v0, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    iget v2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    iget-object v3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    check-cast v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mPluginContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mDefaultContext:Landroid/content/Context;

    :goto_0
    if-eqz v4, :cond_1

    iget-object v6, v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    iget-object v6, v4, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {v6}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v0, v7, v5, v1}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v6, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " must be a Fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtensionFragmentListener"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/leak/LeakDetector;->trackGarbage(Ljava/lang/Object;)V

    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    return-void
.end method
