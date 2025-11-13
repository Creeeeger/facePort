.class public final Lcom/android/wm/shell/draganddrop/AppInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mIntent:Landroid/content/Intent;

.field public final mIsDropResolver:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    return-void
.end method
