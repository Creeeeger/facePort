.class Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$HierarchyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mAlwaysOnTop:Z

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mIncludingParents:Z

.field private blacklist mInsetsFrameOwner:Landroid/os/IBinder;

.field private blacklist mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentLeafTaskIfRelaunch:Z

.field private blacklist mReparentTopOnly:Z

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    return-void
.end method


# virtual methods
.method blacklist build()Landroid/window/WindowContainerTransaction$HierarchyOp;
    .locals 4

    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(ILandroid/window/WindowContainerTransaction$HierarchyOp-IA;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    iget-object v3, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-static {v0, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameOwner:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameOwner(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V

    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmIncludingParents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    return-object v0
.end method

.method blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method blacklist setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    return-object p0
.end method

.method blacklist setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    return-object p0
.end method

.method blacklist setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method blacklist setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    return-object p0
.end method

.method blacklist setIncludingParents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    return-object p0
.end method

.method blacklist setInsetsFrameOwner(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameOwner:Landroid/os/IBinder;

    return-object p0
.end method

.method blacklist setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    return-object p0
.end method

.method blacklist setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method blacklist setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method blacklist setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    return-object p0
.end method

.method blacklist setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    return-object p0
.end method

.method blacklist setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    return-object p0
.end method

.method blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method blacklist setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    return-object p0
.end method

.method blacklist setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    return-object p0
.end method

.method blacklist setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    return-object p0
.end method
