.class public final Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

.field public final synthetic val$fromMenu:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->val$fromMenu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->val$fromMenu:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    sget-object p1, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->EYECOMFORT_SETTINGS:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->setMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/util/SettingsHelper;->setScheduledBluelight(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$9;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/util/SettingsHelper;->setAdaptiveBluelight(I)V

    :cond_1
    :goto_0
    return-void
.end method
