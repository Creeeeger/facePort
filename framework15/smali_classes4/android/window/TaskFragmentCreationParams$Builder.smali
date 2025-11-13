.class public final Landroid/window/TaskFragmentCreationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowTransitionWhenEmpty:Z

.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialRelativeBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private blacklist mOverrideOrientation:I

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private blacklist mPairedActivityToken:Landroid/os/IBinder;

.field private blacklist mPairedPrimaryFragmentToken:Landroid/os/IBinder;

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentCreationParams;
    .locals 12

    new-instance v11, Landroid/window/TaskFragmentCreationParams;

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    iget v5, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    iget-object v6, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    iget-boolean v8, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mAllowTransitionWhenEmpty:Z

    iget v9, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;ZILandroid/window/TaskFragmentCreationParams-IA;)V

    return-object v11
.end method

.method public blacklist setAllowTransitionWhenEmpty(Z)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mAllowTransitionWhenEmpty:Z

    return-object p0
.end method

.method public blacklist setInitialRelativeBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialRelativeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public blacklist setOverrideOrientation(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOverrideOrientation:I

    return-object p0
.end method

.method public blacklist setPairedActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setPairedPrimaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .locals 0

    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    return-object p0
.end method
