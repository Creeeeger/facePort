.class public abstract Lcom/android/systemui/util/SystemUIDialogUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field protected static final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSystemUIDialogUtils(Landroid/content/Context;I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/qp/SubscreenQsPanelDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qp/SubscreenQsPanelDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
