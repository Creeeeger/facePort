.class public final synthetic Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/settings/share/SelectAppActivity;

    iget-object p0, p0, Lcom/samsung/android/settings/share/SelectAppActivity$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/share/SelectAppActivity;->$r8$lambda$vgkWRTaZBK_YPhhrtznvVXqmJXI(Lcom/samsung/android/settings/share/SelectAppActivity;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
