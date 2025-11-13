.class public Landroid/window/WindowOnBackInvokedDispatcher$Checker;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# instance fields
.field private blacklist mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;
    .locals 0

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public blacklist checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z
    .locals 3

    invoke-direct {p0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-nez v0, :cond_0

    const-string v0, "WindowOnBackDispatcher"

    const-string v1, "OnBackInvokedCallback is not enabled for the application.\nSet \'android:enableOnBackInvokedCallback=\"true\"\' in the application manifest."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    if-ltz p1, :cond_1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application registered OnBackInvokedCallback cannot have negative priority. Priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
