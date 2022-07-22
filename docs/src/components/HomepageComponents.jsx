import React from 'react';
import { paramCase } from 'param-case';
import Link from '@docusaurus/Link';
import clsx from 'clsx';

export function HomepageSection({
  id,
  title,
  children,
  description,
  className,
  HeadingTag = 'h2',
}) {
  return (
    <div
      className={clsx(
        'homepage-section',
        className
      )}
    >
      {title && <HeadingTag id={id ?? paramCase(title)}>{title}</HeadingTag>}
      {description && <p className="section-description">{description}</p>}
      <div className="section-content">{children}</div>
    </div>
  );
}

/* simple card for layout, no interactivity */
export function HomepageCard({ id, icon, title, description }) {
  return (
    <div className="homepage-card card-content">
      <div className="title" id={id && paramCase(title)}>
        {icon && <img class="icon" src={icon} />}
        <span classname="heading">{title}</span>
      </div>
      <div className="description">{description}</div>
    </div>
  );
}

/* richer product-feature card */
export function ProductCard({ id, icon, title, description, ghstars, ghlink, docs, readmore }) {
  return (
      <div className="product-card card-content">
        <div className="title" id={id && paramCase(title)}>
          {icon && <img class="icon" src={icon} />}
          <div class="heading">{title}</div>
        </div>
        <div className="description">{description}</div>
        <div className="footnotes">
          { ghstars  && <div class="ghstars"><Link to={`${ghlink}/stargazers`}>{ghstars}</Link></div> }
          { ghlink   && <div class="ghlink"><Link to={ghlink}>source</Link></div> }
          { docs     && <div class="docs"><Link to={docs}>docs</Link></div> }
          { readmore && <div class="readmore"><Link to={readmore}>read more</Link></div> }
        </div>
      </div>
  );
}
