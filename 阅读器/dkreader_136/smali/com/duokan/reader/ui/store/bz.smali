.class Lcom/duokan/reader/ui/store/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duokan/reader/ui/store/bw;


# direct methods
.method constructor <init>(Lcom/duokan/reader/ui/store/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/duokan/reader/ui/store/bz;->a:Lcom/duokan/reader/ui/store/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 83
    check-cast p1, Lcom/duokan/reader/ui/store/AdsView;

    .line 86
    iget-object v0, p0, Lcom/duokan/reader/ui/store/bz;->a:Lcom/duokan/reader/ui/store/bw;

    invoke-static {v0}, Lcom/duokan/reader/ui/store/bw;->b(Lcom/duokan/reader/ui/store/bw;)Lcom/duokan/reader/ui/store/ky;

    move-result-object v0

    invoke-interface {v0}, Lcom/duokan/reader/ui/store/ky;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "V2_STORE_BOOK_ADSCLICK"

    .line 87
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Category-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duokan/reader/ui/store/AdsView;->getUmengIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/duokan/reader/UmengManager;->get()Lcom/duokan/reader/UmengManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/duokan/reader/UmengManager;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/duokan/reader/ui/store/bz;->a:Lcom/duokan/reader/ui/store/bw;

    invoke-static {v0}, Lcom/duokan/reader/ui/store/bw;->b(Lcom/duokan/reader/ui/store/bw;)Lcom/duokan/reader/ui/store/ky;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duokan/reader/ui/store/AdsView;->getDkStoreAdsInfo()Lcom/duokan/reader/common/webservices/duokan/DkStoreAdsBookInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/duokan/reader/ui/store/ky;->a(Lcom/duokan/reader/common/webservices/duokan/af;)V

    .line 91
    return-void

    .line 86
    :cond_0
    const-string v0, "V2_STORE_FICTION_ADSCLICK"

    goto :goto_0
.end method
