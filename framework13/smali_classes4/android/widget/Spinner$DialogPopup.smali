.class Landroid/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private greylist-max-o mListAdapter:Landroid/widget/ListAdapter;

.field private greylist-max-o mPopup:Landroid/app/AlertDialog;

.field private greylist-max-o mPrompt:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Spinner;)V
    .locals 0

    .line 1215
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Spinner;Landroid/widget/Spinner$DialogPopup-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o dismiss()V
    .locals 1

    .line 1221
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1225
    :cond_0
    return-void
.end method

.method public greylist-max-o getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1285
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 1241
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getHorizontalOffset()I
    .locals 1

    .line 1295
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getVerticalOffset()I
    .locals 1

    .line 1290
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r isShowing()Z
    .locals 1

    .line 1229
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1261
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1262
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1265
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Spinner$DialogPopup;->dismiss()V

    .line 1266
    return-void
.end method

.method public greylist-max-o setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 1233
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 1234
    return-void
.end method

.method public greylist-max-o setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 1270
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 2
    .param p1, "px"    # I

    .line 1304
    const-string v0, "Spinner"

    const-string v1, "Cannot set DropDown Height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    return-void
.end method

.method public greylist-max-o setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 1280
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void
.end method

.method public greylist-max-o setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1237
    iput-object p1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 1238
    return-void
.end method

.method public greylist-max-o setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 1275
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    return-void
.end method

.method public greylist-max-o show(II)V
    .locals 3
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 1245
    iget-object v0, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1246
    return-void

    .line 1248
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1250
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1252
    :cond_1
    iget-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->this$0:Landroid/widget/Spinner;

    .line 1253
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 1252
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1253
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    .line 1254
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1255
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1256
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1257
    iget-object v2, p0, Landroid/widget/Spinner$DialogPopup;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1258
    return-void
.end method
