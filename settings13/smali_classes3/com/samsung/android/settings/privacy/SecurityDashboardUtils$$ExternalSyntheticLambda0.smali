.class public final synthetic Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;->f$0:[Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->$r8$lambda$beWpqFLefJqgGoHcAj22qUZ5zhw([Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method
