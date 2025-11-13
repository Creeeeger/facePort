.class public final synthetic Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

.field public final synthetic f$1:Landroid/app/IActivityManager;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;Landroid/app/IActivityManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

    iput-object p2, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$1:Landroid/app/IActivityManager;

    iput p3, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

    iget-object v1, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$1:Landroid/app/IActivityManager;

    iget p0, p0, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;->$r8$lambda$B9TVQB2xcWc1hsBAw87qRcPNtyA(Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;Landroid/app/IActivityManager;I)V

    return-void
.end method
