.class public final Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $icon:Lcom/android/internal/statusbar/StatusBarIcon;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;


# direct methods
.method public constructor <init>(Lcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/CoverScreenIconController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->$icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->context:Landroid/content/Context;

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/Icon;->loadDrawableAsUser(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-string v3, "Set mode icon "

    const-string/jumbo v4, "x"

    const-string v5, "CoverScreenIconController"

    invoke-static {v2, v1, v3, v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/CoverScreenIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CoverScreenIconController;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/CoverScreenIconController$setModeIcon$1$1;-><init>(Lcom/android/systemui/statusbar/phone/CoverScreenIconController;Ljava/io/ByteArrayOutputStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
