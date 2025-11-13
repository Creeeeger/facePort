.class public final Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $show:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;->$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    iget-boolean p0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin$notiCenterCallback$1$onChangedVisibilityOnKeyguard$1;->$show:Z

    sput-boolean p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->showNotilusOnKeyguard:Z

    return-void
.end method
