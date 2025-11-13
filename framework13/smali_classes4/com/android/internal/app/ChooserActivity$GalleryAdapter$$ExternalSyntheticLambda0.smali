.class public final synthetic Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$GalleryAdapter;ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    return-void
.end method


# virtual methods
.method public final whitelist onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ChooserActivity$GalleryAdapter;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$GalleryAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ChooserActivity$GalleryAdapter;->lambda$onBindViewHolder$0$com-android-internal-app-ChooserActivity$GalleryAdapter(ILcom/android/internal/app/ChooserActivity$GalleryAdapter$GalleryViewHolder;Landroid/view/View;)V

    return-void
.end method
