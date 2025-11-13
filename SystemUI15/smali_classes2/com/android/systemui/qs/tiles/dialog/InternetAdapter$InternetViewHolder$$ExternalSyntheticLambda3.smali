.class public final synthetic Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder$$ExternalSyntheticLambda3;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/qs/tiles/dialog/InternetAdapter$InternetViewHolder;->wifiConnect(Lcom/android/wifitrackerlib/WifiEntry;Landroid/view/View;)V

    const/4 p0, 0x0

    return-object p0
.end method
