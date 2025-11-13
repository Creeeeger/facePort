.class public final Landroidx/slice/SliceManagerWrapper;
.super Landroidx/slice/SliceManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mManager:Landroid/app/slice/SliceManager;


# direct methods
.method public constructor <init>(Landroid/app/slice/SliceManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    iput-object p1, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/app/slice/SliceManager;)V

    return-void
.end method
