.class public final Lcom/google/android/material/resources/TextAppearance$1;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/resources/TextAppearance;

.field public final synthetic val$callback:Lcom/google/android/material/resources/TextAppearanceFontCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/TextAppearance;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iput-object p2, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    return-void
.end method


# virtual methods
.method public final onFontRetrievalFailed(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    return-void
.end method

.method public final onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance$1;->this$0:Lcom/google/android/material/resources/TextAppearance;

    iget v1, v0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    iget-object p1, v0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance$1;->val$callback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    return-void
.end method
