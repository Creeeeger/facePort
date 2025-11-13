.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController$createCurrentViewController$controller$2;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->editResources:Lcom/android/systemui/qs/customize/SecQSSettingEditResources;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->isCurrentTopEdit:Z

    sget-object p1, Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;->TileEdit:Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->showViewWithFixRotation(Lcom/android/systemui/qs/customize/viewcontroller/ViewControllerType;)V

    return-void
.end method
