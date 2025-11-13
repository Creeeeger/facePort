.class public final Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;->mExtras:Landroid/os/Bundle;

    return-void
.end method
