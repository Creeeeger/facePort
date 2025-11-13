.class public final synthetic Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IActivityManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/IActivityManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/app/IActivityManager;

    iput p2, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;->f$0:Landroid/app/IActivityManager;

    iget p0, p0, Lcom/samsung/android/settings/flipfont/FlipFontReceiver$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/settings/flipfont/FlipFontReceiver;->$r8$lambda$MmY7Y0gpUmjUL9FEle2Upz9IHLw(Landroid/app/IActivityManager;I)V

    return-void
.end method
