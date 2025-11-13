.class public final Lcom/android/systemui/qs/QSFooterView$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSFooterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterView$1;->this$0:Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterView$1;->this$0:Lcom/android/systemui/qs/QSFooterView;

    sget p1, Lcom/android/systemui/qs/QSFooterView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->setBuildText()V

    return-void
.end method
