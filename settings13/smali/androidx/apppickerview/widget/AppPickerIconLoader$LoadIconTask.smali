.class Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "AppPickerIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/apppickerview/widget/AppPickerIconLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

.field final synthetic this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;


# direct methods
.method constructor <init>(Landroidx/apppickerview/widget/AppPickerIconLoader;Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p2, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 109
    iget-object p1, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->this$0:Landroidx/apppickerview/widget/AppPickerIconLoader;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    iget-object v0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->activityName:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Landroidx/apppickerview/widget/AppPickerIconLoader;->access$000(Landroidx/apppickerview/widget/AppPickerIconLoader;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->mIconInfo:Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/apppickerview/widget/AppPickerIconLoader$IconInfo;->imageView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroidx/apppickerview/widget/AppPickerIconLoader$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
